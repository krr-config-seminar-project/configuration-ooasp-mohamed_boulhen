#include "../furniture-config-model.lp".

partial(ooasp_instantiation("f1", "furniture_instance_5")).

% Chair
partial(ooasp_isa("furniture_instance_5", "Chair", ("Chair", 1))).
partial(ooasp_attribute_value("furniture_instance_5", "material", ("Chair", 1), "Wood")).
partial(ooasp_attribute_value("furniture_instance_5", "legs", ("Chair", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_5", "height", ("Chair", 1), 85)).

% Table
partial(ooasp_isa("furniture_instance_5", "Table", ("Table", 1))).
partial(ooasp_attribute_value("furniture_instance_5", "material", ("Table", 1), "Glass")).
partial(ooasp_attribute_value("furniture_instance_5", "legs", ("Table", 1), 4)).
partial(ooasp_attribute_value("furniture_instance_5", "length", ("Table", 1), 250)).
partial(ooasp_attribute_value("furniture_instance_5", "width", ("Table", 1), 120)).

% Table legs
partial(ooasp_isa("furniture_instance_5", "Legs", ("Legs", 1))).
partial(ooasp_attribute_value("furniture_instance_5", "type", ("Legs", 1), "Glass")).
partial(ooasp_associated("furniture_instance_5", "Table_legs", ("Table", 1), ("Legs", 1))).

% Table top
partial(ooasp_isa("furniture_instance_5", "Top", ("Top", 1))).
partial(ooasp_attribute_value("furniture_instance_5", "material", ("Top", 1), "Wood")).
partial(ooasp_associated("furniture_instance_5", "Table_top", ("Table", 1), ("Top", 1))).

% Chair legs
partial(ooasp_isa("furniture_instance_5", "Legs", ("Legs", 2))).
partial(ooasp_attribute_value("furniture_instance_5", "type", ("Legs", 2), "Wood")).
partial(ooasp_associated("furniture_instance_5", "Chair_legs", ("Chair", 1), ("Legs", 2))).
