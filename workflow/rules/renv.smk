wildcard_constraints:
    # Allows renv_dir also to be the empty (=root dir)
    renv_dir=".*",


rule restore_renv:
    conda:
        "../envs/quarto_r.yaml"
    input:
        rprofile="{renv_dir}.Rprofile",
        lock="{renv_dir}renv.lock",
    output:
        restored="{renv_dir}restored.Rprofile",
    log:
        "logs/renv/{renv_dir}_restore.log",
    shell:
        """
        R -e 'source("{input.rprofile}", chdir=TRUE);renv::restore()'
        echo 'source("{input.rprofile}", chdir=TRUE)' > {output.restored}
        """
