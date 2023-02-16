///cutscene_create_fade
if (!instance_exists(o_cutscene_fade_transition)) {
    transition = instance_create(0, 0, o_cutscene_fade_transition);
    transition.cutscene = id;
}
