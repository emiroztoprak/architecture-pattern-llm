#!/bin/bash

#projects=("archives_space" "neurohub" "open_spending" "planning_poker" "recycling" "color_ide")
projects=("open_spending" "planning_poker" "recycling" "color_ide")

for project in "${projects[@]}"; do # Traverse 6 projects

    for input_file_copy_index in {1..1}; do # Traverse 20 copies

        echo "Running notebook with values $project $input_file_copy_index"

        # Set an environment variable that the notebook can access
        export project="$project"
        export input_file_copy_index="$input_file_copy_index"

        # Execute the notebook using nbconvert
        jupyter nbconvert --to notebook --execute pattern_selection_self_refinement_ollama.ipynb
    done
done

echo "Finished running notebook for all cases."