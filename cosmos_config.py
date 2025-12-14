# include/dbt/cosmos_config.py

from cosmos.config import ProfileConfig, ProjectConfig
from pathlib import Path

DBT_CONFIG = ProfileConfig(
    profile_name='dbt_models',
    target_name='dev_swm',
    profiles_yml_filepath=Path('/Users/praeyz/personal/sunday_dbt_workshop/include/dbt/profiles.yml')
)

DBT_PROJECT_CONFIG = ProjectConfig(
    dbt_project_path='/Users/praeyz/personal/sunday_dbt_workshop/include/dbt',
)

