$epochs = 5000
$layers = 4
$neurons_per_layer = 20
$learning_rate = 0.00125
$spline_degree = 3
$weight_interior = 1.0
$weight_boundary = 1.0
$weight_initial = 1.0

$eps_interior_values = @(0.001)
$n_points_x_values = @(80)

foreach ($eps_interior in $eps_interior_values) {
    foreach ($n_points_x in $n_points_x_values) {
        # print invocations to console as strings in one line, so that they can be copied and pasted, add escaped backticks
        # "python main_solution.py ```
        #     --n_points_x $n_points_x ```
        #     --epochs $epochs ```
        #     --eps_interior $eps_interior ```
        #     --weight_interior $weight_interior ```
        #     --weight_boundary $weight_boundary ```
        #     --weight_initial $weight_initial ```
        #     --layers $layers ```
        #     --neurons_per_layer $neurons_per_layer ```
        #     --learning_rate $learning_rate ```
        #     --spline_degree $spline_degree ```
        #     --one_dimension ```
        #     --optimize_test_function ```
        #     --pinn_is_solution ```
        #     --save" | Out-String
        # exit 0
        # python main_solution.py `
        #     --n_points_x $n_points_x `
        #     --n_points_t $n_points_x `
        #     --epochs $epochs `
        #     --eps_interior $eps_interior `
        #     --weight_interior $weight_interior `
        #     --weight_boundary $weight_boundary `
        #     --weight_initial $weight_initial `
        #     --learning_rate $learning_rate `
        #     --spline_degree $spline_degree `
        #     --splines `
        #     --save
        python main_solution.py `
            --n_points_x $n_points_x `
            --n_points_t $n_points_x `
            --epochs $epochs `
            --eps_interior $eps_interior `
            --weight_interior $weight_interior `
            --weight_boundary $weight_boundary `
            --weight_initial $weight_initial `
            --layers $layers `
            --neurons_per_layer $neurons_per_layer `
            --learning_rate $learning_rate `
            --spline_degree $spline_degree `
            --pinn_is_solution `
            --uneven_distribution `
            --optimize_test_function `
            --save
            
    }
}
