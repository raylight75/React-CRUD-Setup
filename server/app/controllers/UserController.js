const db = require('../config/db.config.js');
const User = db.User;

/**
 * Save a User object to database MySQL/PostgreSQL
 * @param {*} req 
 * @param {*} res 
 */
exports.createUser = (req, res) => {
    let user = {};

    try{
        // BuildingUser object from upoading request's body
        user.name = req.body.name;
        user.email = req.body.email;
        user.phone_number = req.body.phone_number;
        user.dob = req.body.dob;
        user.bloodGroup = req.body.bloodGroup;
    
        // Save to MySQL database
        User.create(user, 
                          {attributes: ['id', 'name', 'email', 'phone_number', 'dob', "bloodGroup"]})
                    .then(result => {    
                      res.status(200).json(result);
                    });
    }catch(error){
        res.status(500).json({
            message: "Fail!",
            error: error.message
        });
    }
}

/**
 * Retrieve User information from database
 * @param {*} req 
 * @param {*} res 
 */
exports.users = (req, res) => {
    // find all User information from 
    try{
        User.findAll({attributes: ['id', 'name', 'email', 'phone_number', 'dob', "bloodGroup"]})
        .then(user => {
            res.status(200).json(user);
        })
    }catch(error) {
        // log on console
        console.log(error);

        res.status(500).json({
            message: "Error!",
            error: error
        });
    }
}

exports.getUser = (req, res) => {
    User.findByPk(req.params.id, 
                        {attributes: ['id', 'name', 'email', 'phone_number', 'dob', "bloodGroup"]})
        .then(user => {
          res.status(200).json(user);
        }).catch(error => {
          // log on console
          console.log(error);

          res.status(500).json({
              message: "Error!",
              error: error
          });
        })
}

/**
 * Updating a User
 * @param {*} req 
 * @param {*} res 
 */
exports.updateUser = async (req, res) => {
    try{
        let userId = req.params.id;
        let user = await User.findByPk(userId);
    
        if(!user){
            // return a response to client
            res.status(404).json({
                message: "Not Found for updating a user with id = " + userId,
                error: "404"
            });
        } else {    
            // update new change to database
            let updatedObject = {
                name: req.body.name,
                email: req.body.email,
                phone_number: req.body.phone_number,
                dob: req.body.dob,
                bloodGroup: req.body.bloodGroup
            }
            let result = await User.update(updatedObject,
                              { 
                                returning: true, 
                                where: {id: userId},
                                attributes: ['id', 'name', 'email', 'phone_number', 'dob', "bloodGroup"]
                              }
                            );

            // return the response to client
            if(!result) {
                res.status(500).json({
                    message: "Error -> Can not update a user with id = " + req.params.id,
                    error: "Can NOT Updated",
                });
            }

            res.status(200).json(result);
        }
    } catch(error){
        res.status(500).json({
            message: "Error -> Can not update a user with id = " + req.params.id,
            error: error.message
        });
    }
}

/**
 *  Delete a User by ID
 * @param {*} req 
 * @param {*} res 
 */
exports.deleteUser = async (req, res) => {
    try{
        let userId = req.params.id;
        let user = await User.findByPk(userId);

        if(!user){
            res.status(404).json({
                message: "Does Not exist a user with id = " + userId,
                error: "404",
            });
        } else {
            await user.destroy();
            res.status(200).json(user);
        }
    } catch(error) {
        res.status(500).json({
            message: "Error -> Can NOT delete a user with id = " + req.params.id,
            error: error.message
        });
    }
}