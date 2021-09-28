module.exports = {
  HOST: "mysql_tracking",
  USER: "root",
  PASSWORD: "123456789",
  DB: "tracking_api",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};