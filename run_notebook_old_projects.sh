#!/bin/bash

projects=("archives_space_old" "open_spending_old")
#projects=("open_spending")

for project in "${projects[@]}"; do # Traverse 6 projects


    echo "Running notebook with values $project $input_file_copy_index"

    # Set an environment variable that the notebook can access
    export project="$project"
    export input_file_copy_index="$input_file_copy_index"

    # Execute the notebook using nbconvert
    jupyter nbconvert --to notebook --execute ollama_pattern_selection_self_refinement_groq.ipynb
done

echo "Finished running notebook for all cases."