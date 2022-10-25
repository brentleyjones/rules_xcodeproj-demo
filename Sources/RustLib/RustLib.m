#import "RustLib.h"

extern int32_t get_a_value_from_rust(void);

NSInteger answer() {
    return get_a_value_from_rust();
}
