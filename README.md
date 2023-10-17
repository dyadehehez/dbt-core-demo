Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices



      # Optional Redshift configs:
      connect_timeout: None #number of seconds before timeout
      sslmode: prefer #??
      role: None
      autocreate: false #create user if not exist
      ra3_node: false #default false, enables cross-database sources
      autocommit: true #commit after each statement
      threads: 1 #concurrency for model