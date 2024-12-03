# Econometric Data Analysis Template Repository

Welcome to the Econometric Data Analysis Template Repository! This repository provides a reproducible workflow for econometric data analysis using R, VS Code, Conda, and Snakemake.

## Getting Started

### Prerequisites

- **Git**: [Install Git](https://git-scm.com/downloads)
- **Anaconda or Miniconda**: [Install Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- **VS Code**: [Install VS Code](https://code.visualstudio.com/)
- **Quarto**: [Install Quarto](https://quarto.org/docs/get-started/)
- **R**: [Install R](https://cran.r-project.org/)

### Installation Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/econometric-analysis-template.git
   cd econometric-analysis-template
   ```

2. **Set Up Conda Environments**

For R scripts:

```bash
conda env create -f envs/r_env.yaml
```
For Quarto rendering:

```bash
conda env create -f envs/quarto_env.yaml
```

3. **Initialize 'renv'**

In the project directory, open R and run:
```{R}
install.packages("renv")
renv::restore()
```

4. **Run the workflow**

```bash
snakemake --use-conda --cores 1
```
Note: Replace --cores 1 with the number of cores you want to use.

5. **Using the Repository**

_Adding Data_

- Place your raw data files in the workflow/ data/ directory.
- Update data/README.md with descriptions of your datasets.

_Editing Scripts_

- Modify scripts/preprocess_data.R to suit your data preprocessing needs.
- Add additional scripts to the scripts/ directory as needed.

_Editing the Quarto Document_

- Edit [exploratory-analysis/analysis.qmd](workflow/quarto/report_example.qmd)d to include your analysis and findings.

_Running the Workflow_

- Use Snakemake to automate the execution of your scripts and rendering of the Quarto document.

```bash
snakemake --use-conda --cores all
```
_Updating Conda Environments_

- If you add new packages to your scripts, update the corresponding .yaml files in envs/ and recreate the environment:

```bash
conda env update -f envs/r_env.yaml
```
- Remember to run renv::snapshot() in R to update renv.lock

_Version Control with Git_

- Commit your changes regularly:

```bash
git add .
git commit -m "Your commit message"
git push origin main
```
Publishing with GitHub Pages

	•	Enable GitHub Pages in your repository settings.
	•	Commit and push your rendered HTML files to the repository.

## Instructions for Students

1. Clone the Repository

2. 	Follow the Installation Steps

See the Installation Steps section.

3.	Work on Your Analysis

- Add your data and scripts.
- Edit the Quarto document.

4.	Run the Workflow

```bash
snakemake --use-conda --cores all
```

5.	Commit and Push Your Changes

```bash
git add .
git commit -m "Your commit message"
git push origin main
```

## Additional Resources

- Conda Documentation: https://docs.conda.io/en/latest/
- Snakemake Documentation: https://snakemake.readthedocs.io/
- R renv Package: https://rstudio.github.io/renv/
- Quarto Documentation: https://quarto.org/docs/
- VS Code R Extension Guide: Using R in VS Code

## Support

If you encounter any issues or have questions, please open an issue in the repository or contact the RA or Sean for assistance.