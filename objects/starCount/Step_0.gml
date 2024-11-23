S_final = floor((SF_stars + SCut_stars + SSwipe_stars + SStir_stars)/4); // average
Q_final = floor((QF_stars + QCut_stars + QSwipe_stars + QStir_stars + QPour_stars + QBake_stars)/6);

show_debug_message(Q_final);
stars = 6 + S_final + Q_final + M_final;
