#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_7")).

% Chair
partial(ooasp_isa("furniture_instance_7", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_7", "material", ("Chair", 1), "Plastic")).
partial(ooasp_attribute_value("furniture_instance_7", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_7", "height", ("Chair", 1), 85)).

% Chair legs
partial(ooasp_isa("furniture_instance_7", "Legs", ("Legs", 2))).
partial(ooasp_attribute_value("furniture_instance_7", "type", ("Legs", 2), "Plastic")).
partial(ooasp_associated("furniture_instance_7", "Chair_legs", ("Chair", 1), ("Legs", 2))).
