# Data Directory

This directory contains all datasets used or generated in the project. Proper organization and consistent data handling practices are essential for reproducibility. Below is a guide on how to use the data directory effectively.

## Directory Structure
The `data` directory is divided into three primary subdirectories to manage the different stages of data processing:

- `/raw/`: Contains raw datasets directly obtained from original sources without any modification.
- `/working/`: Contains datasets that have undergone initial processing or transformation.
- `/final/`: Contains fully processed datasets that are used for analysis and modeling.

## Dataset Descriptions

### `/raw/`
- **Description**: The `/raw/` directory contains the original datasets collected for the project. These files should remain unmodified to serve as a reference point and source for any transformations.
- **Example Files**:
  - `raw_data.csv`: The original dataset, directly obtained from the source.
- **Source**: [Provide a description or link to the original data source].
- **Notes**: Do not edit these files directly. All modifications should be performed on copies saved in the `/working/` directory.

### `/working/`
- **Description**: The `/working/` directory contains datasets that are in the process of being cleaned or transformed. This is the space for data exploration, cleaning, imputation of missing values, and other intermediate steps before final analysis.
- **Example Files**:
  - `cleaned_data.csv`: Raw data that has undergone cleaning (e.g., duplicate removal, missing value handling).
  - `working_data.csv`: Data that has been transformed, normalized, or feature-engineered for further processing.
- **Purpose**: This directory serves as a "workbench" for data manipulation steps that are preparatory for analysis.

### `/final/`
- **Description**: The `/final/` directory contains datasets that are fully processed and ready for analysis and modeling. This includes cleaned and transformed data that will be used in modeling scripts or analysis notebooks.
- **Example Files**:
  - `final_model_data.csv`: Data that is finalized and contains selected features, ready for model training.
  - `ready_analysis_data.csv`: The dataset prepared for exploratory data analysis (EDA) or reporting.
- **Purpose**: This data is considered finalized for use in models and analyses, and any further modifications should be made carefully, with proper version control.

## Data Management Guidelines

- **Raw Data**: Always keep a copy of your original dataset in the `/raw/` folder. These datasets should not be modified to ensure reproducibility.
- **Working Data**: Use the `/working/` directory for cleaning and transforming datasets. Document each transformation step thoroughly to keep a clear record of the evolution from raw data to working data.
- **Final Data**: After cleaning and transformation are complete, save the finalized datasets to the `/final/` folder. These datasets are considered the "gold standard" for use in modeling and analysis.

## How to Use

1. **Place Your Data**: 
   - Place all new raw datasets in the `/raw/` folder.
   - Include a metadata text file with each dataset that provides a description, source, collection date, and key features.

2. **Data Processing**:
   - Use scripts (in `/src/` folder, under the main folder) to transform the data. Save intermediate results to `/working/` and the final cleaned datasets to `/final/`.
   - Clearly document each step in the transformation process. This documentation should include information about changes made, the purpose of the transformation, and any potential limitations.

## Additional Notes

- **Confidential Data**: If datasets contain sensitive information, ensure compliance with data privacy regulations. Do not commit confidential or personal data to public repositories.
- **Data Documentation**: Always document any changes made to datasets in the processing stage, including metadata files and notes on transformation scripts.
- **Codebook**: Provide codebook for each dataset that includes a description of variables, data sources, collection methods. Store in the `/raw/` directory.
