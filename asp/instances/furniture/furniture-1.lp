#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_1")).

% Chair
partial(ooasp_isa("furniture_instance_1", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_1", "material", ("Chair", 1), "Wood")).
partial(ooasp_attribute_value("furniture_instance_1", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_1", "height", ("Chair", 1), 50)).

% Table
partial(ooasp_isa("furniture_instance_1", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_1", "material", ("Table", 1), "Wood")).
partial(ooasp_attribute_value("furniture_instance_1", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_1", "length", ("Table", 1), 200)).
partial(ooasp_attribute_value("furniture_instance_1", "width", ("Table", 1), 100)).

% Table legs
partial(ooasp_isa("furniture_instance_1", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_1", "type", ("Legs", 1), "Wood")).
partial(ooasp_associated("furniture_instance_1", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top
partial(ooasp_isa("furniture_instance_1", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_1", "material", ("Top", 1), "Wood")).
partial(ooasp_associated("furniture_instance_1", "Table_top", ("Table", 1), ("Top", 1))).
