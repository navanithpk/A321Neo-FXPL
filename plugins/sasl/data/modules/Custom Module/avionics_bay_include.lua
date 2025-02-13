return [[


typedef int xpdata_navaid_type_t;

typedef struct xpdata_coords_t {
    double lat;
    double lon;
} xpdata_coords_t;

/******************************* NAVAIDS *******************************/
typedef struct xpdata_navaid_t {
    const char *id;         // e.g., SRN
    int id_len;
    const char *full_name;  // e.g., Saronno VOR
    int full_name_len;
    xpdata_navaid_type_t type; // Constants NAV_ID_* 
    xpdata_coords_t coords;
    int altitude;
    unsigned int frequency;
    bool is_coupled_dme;    // True if the vor is coupled with DME
    int category;           // Category (also range in nm)
    int bearing;            // Check XP documentation, multiplied by 1000
} xpdata_navaid_t;

typedef struct xpdata_navaid_array_t {
    const struct xpdata_navaid_t * const * navaids;
    int len;
} xpdata_navaid_array_t;

/******************************* FIXES *******************************/
typedef struct xpdata_fix_t {
    const char *id;         // e.g., ROMEO
    int id_len;
    xpdata_coords_t coords;
} xpdata_fix_t;

typedef struct xpdata_fix_array_t {
    const struct xpdata_fix_t * const * fixes;
    int len;
} xpdata_fix_array_t;

/******************************* ARPT *******************************/

typedef struct xpdata_apt_rwy_t {
    char name[4];
    char sibl_name[4];              // On the other head of the runway

    xpdata_coords_t coords;
    xpdata_coords_t sibl_coords;    // On the other head of the runway
    
    double width;
    int surface_type;
    bool has_ctr_lights;
    
} xpdata_apt_rwy_t;

typedef struct xpdata_apt_node_t {

    xpdata_coords_t coords;
    bool is_bez;
    xpdata_coords_t bez_cp;

} xpdata_apt_node_t;

typedef struct xpdata_apt_node_array_t {
    int color;
    
    xpdata_apt_node_t *nodes;
    int nodes_len;
    
    struct xpdata_apt_node_array_t *hole; // For linear feature this value is nullptr
} xpdata_apt_node_array_t;

typedef struct xpdata_apt_route_t {
    const char *name;
    int name_len;
    int route_node_1;   // Identifiers for the route nodes, to be used with get_route_node()
    int route_node_2;   // Identifiers for the route nodes, to be used with get_route_node()
} xpdata_apt_route_t;

typedef struct xpdata_apt_gate_t {
    const char *name;
    int name_len;
    xpdata_coords_t coords;
} xpdata_apt_gate_t;

typedef struct xpdata_apt_details_t {
    xpdata_coords_t tower_pos; 

    xpdata_apt_node_array_t *pavements;
    int pavements_len;
    
    xpdata_apt_node_array_t *linear_features;
    int linear_features_len;

    xpdata_apt_node_array_t *boundaries;
    int boundaries_len;

    xpdata_apt_route_t *routes;
    int routes_len;

    xpdata_apt_gate_t  *gates;
    int gates_len;

} xpdata_apt_details_t;

typedef struct xpdata_apt_t {
    const char *id;         // e.g., LIRF
    int id_len;
    
    const char *full_name;  // e.g., Roma Fiumicino
    int full_name_len;
    
    int altitude;

    const xpdata_apt_rwy_t *rwys;
    int rwys_len;
    
    xpdata_coords_t apt_center;
    
    long pos_seek;   // For internal use only, do not modify this value
    
    bool is_loaded_details;
    xpdata_apt_details_t *details;
    
} xpdata_apt_t;

typedef struct xpdata_apt_array_t {
    const struct xpdata_apt_t * const * apts;
    int len;
} xpdata_apt_array_t;

typedef struct xpdata_triangulation_t {
    const xpdata_coords_t* points;
    int points_len;
} xpdata_triangulation_t;


/** CIFP **/
typedef struct xpdata_cifp_leg_t {
    const char *leg_name;   // FIX
    int leg_name_len;
    
    char turn_direction;      // N - none, L - left, R - right, E - either, M - left required, S - right required, F - either required
    uint8_t leg_type;         // 1 - IF, 2 - TF, 3 - CF, 4 - DF, 5 - FA, 6 - FC, 7 - FD, 8 - FM, 9 - CA, 10 - CD, 11 - CI, 12 - CR, 13 - RF, 14 - AF, 15 - VA, 16 - VD, 17 - VI, 18 - VM, 19 - VR, 20 - PI, 21 - HA, 22 - HF, 23 - HM
    
    uint32_t radius;          // in nm * 10000
    uint16_t theta;           // mag bearing in degees * 10
    uint16_t rho;             // distance in nm * 10
    uint16_t outb_mag;        // Outbound Magnetic Course in degees * 10
    uint16_t rte_hold;        // Route distance / Hold time/dist - distance in nm * 10 
    bool outb_mag_in_true;    // The outb_mag is in TRUE not mag
    bool rte_hold_in_time;    // The rte_hold is in time not distance (MM.M where M = minutes)
    
    uint8_t cstr_alt_type;    // see constants
    bool cstr_altitude1_fl;   // Is it in FL instead of baro ref altitude?
    bool cstr_altitude2_fl;   // Is it in FL instead of baro ref altitude?
    uint32_t cstr_altitude1;
    uint32_t cstr_altitude2;

    uint8_t cstr_speed_type; // 0 - not present, 1 at or above, 2 at or below, 3 - at
    uint32_t cstr_speed;     // Speed in kts
    
    uint16_t vpath_angle;   // Only for descent, to be considered as negative
    
    const char *center_fix;
    int center_fix_len;

    const char *recomm_navaid;
    int recomm_navaid_len;

} xpdata_cifp_leg_t;

typedef struct xpdata_cifp_data_t {
    char type;
    const char *proc_name;
    int proc_name_len;
    const char *trans_name;
    int trans_name_len;

    xpdata_cifp_leg_t *legs;
    int legs_len;

    int _legs_arr_ref;   // For internal use only
    
} xpdata_cifp_data_t;

typedef struct xpdata_cifp_array_t {
    const struct xpdata_cifp_data_t * data;
    int len;
} xpdata_cifp_array_t;


typedef struct xpdata_cifp_t {
    xpdata_cifp_array_t sids;
    xpdata_cifp_array_t stars;
    xpdata_cifp_array_t apprs;
} xpdata_cifp_t;


xpdata_navaid_array_t get_navaid_by_name  (xpdata_navaid_type_t, const char*);
xpdata_navaid_array_t get_navaid_by_freq  (xpdata_navaid_type_t, unsigned int);
xpdata_navaid_array_t get_navaid_by_coords(xpdata_navaid_type_t, double, double);

xpdata_fix_array_t get_fixes_by_name  (const char*);
xpdata_fix_array_t get_fixes_by_coords(double, double);

xpdata_apt_array_t get_apts_by_name  (const char*);
xpdata_apt_array_t get_apts_by_coords(double, double);
const xpdata_apt_t* get_nearest_apt();
void request_apts_details(const char* arpt_id);

int get_mora(double lat, double lon);

void set_acf_coords(double lat, double lon);

xpdata_coords_t get_route_pos(const xpdata_apt_t *apt, int route_id);

xpdata_triangulation_t triangulate(const xpdata_apt_node_array_t* array);

xpdata_cifp_t get_cifp(const char* airport_id);
void load_cifp(const char* airport_id);
bool is_cifp_ready();

bool xpdata_is_ready(void);

bool initialize(const char* xplane_path, const char* plane_path);
const char* get_error(void);
void terminate(void);

]]
