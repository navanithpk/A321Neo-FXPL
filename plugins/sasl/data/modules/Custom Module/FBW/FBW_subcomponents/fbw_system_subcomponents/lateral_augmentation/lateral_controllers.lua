FBW.lateral.controllers = {
    roll_rate_PID = {
        output = 0,
        bumpless_transfer = function ()
            if get(FBW_lateral_flight_mode_ratio) == 0 or get(FBW_lateral_law) ~= FBW_NORMAL_LAW then
                FBW_PID_arrays.FBW_ROLL_RATE_PID_array.Integral = 0
            end
        end,
        control = function ()
            FBW.lateral.controllers.roll_rate_PID.output = FBW_PID_BP_ADV(
                FBW_PID_arrays.FBW_ROLL_RATE_PID_array,
                FBW.lateral.inputs.x_to_P(get(Total_input_roll), get(Flightmodel_roll)),
                get(True_roll_rate),
                FBW.filtered_sensors.IAS.filtered
            )
        end,
        bp = function ()
            local l_ail_rat = {
                {-25, -1},
                {10 * get(Flaps_deployed_angle) / 25, 0},
                {25,   1},
            }
            local r_ail_rat = {
                {-25, 1},
                {10 * get(Flaps_deployed_angle) / 25, 0},
                {25, -1},
            }

            local ailrat = (Table_interpolate(l_ail_rat, get(Left_aileron)) + Table_interpolate(r_ail_rat, get(Right_aileron))) / 2
            FBW_PID_arrays.FBW_ROLL_RATE_PID_array.Actual_output = ailrat
        end,
    },

    output_blending = function ()
        set(
            FBW_roll_output,
            Math_clamp(
                get(Total_input_roll)                       * get(FBW_lateral_ground_mode_ratio) +
                FBW.lateral.controllers.roll_rate_PID.output * get(FBW_lateral_flight_mode_ratio),
                -1,
                1
            )
        )
    end,
}