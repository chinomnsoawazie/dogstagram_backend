<p align="center">
 <a href="https://github.com/chinomnsoawazie/dogstagram_backend">
 <img width="30%" src="https://github.com/chinomnsoawazie/dogstagram-frontweb-mobile/blob/master/src/utils/DogStagramLogo2.png" style="max-width:50%;">
 </a>
</p>

<p align="center"> <img src="https://img.shields.io/badge/-Technologies%20Used-blue" style="max-width:50%;"> </p>

<p align="center">
  <img src="https://img.shields.io/badge/Ruby-2.7.0-red" style="max-width:50%;">
  <img src="https://img.shields.io/badge/PostgreSQL-12.1-orange" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Ruby%20on%20Rails-6.0.2-red" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Active%20model%20serializers-0.10.0-yellow" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Dotenv%20Rails-2.7-orange" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Bycrypt-3.1.7-blue" style="max-width:50%;">
  <img src="https://img.shields.io/badge/JWT-1.5.4-red" style="max-width:50%;">
 </p>
  
   
 <p align="center"> 
  <a target="blank" rel="noopener noreferrer" href="https://github.com/chinomnsoawazie/dogstagram-frontend-mobile">
    <img src="https://img.shields.io/badge/Frontend%20repository-Click%20here-green" style="max-width:50%;">
  </a>
</p>
  
 <p align="center"> 
   <img src="https://img.shields.io/badge/Status-Making%20commercial%20version-brightgreen" style="max-width:50%;">
</p>

<h1 align="center"> Mobile version of DogStagram (iOS and Android)</h1>

<h1>
  <a id="table-of-contents" class="anchor" href="#contents">  </a>
  Table of Contents
  </h1>
  
  <ul>
    <li><a href="#inspiration">Inspiration</a></li>
    <li><a href="#introduction">Introduction</a>
      <ul>
        <li><a href="#overview">Basic overview</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#goals">Goals</a></li>
        <li><a href="#challenge">Challenge</a></li>
      </ul>
    </li>
    <li><a href="#demo">Demo</a></li>  
    <li><a href="#installation">Installation</a>
      <ul>
          <li><a href="#prerequisites">Prerequisites</a></li>
          <li><a href="#backend-installation">Backend installation</a></li>
          <li><a href="#first-start">First start</a></li>
      </ul>
    </li>   
    <li><a href="#summary-of-files">Summary of files</a>
      <ul>
          <li><a href="#external-dataset">External dataset</a></li>
      </ul>
    </li>
   <li><a href="#planned-improvements">Planned improvements</a></li>
   <li><a href="#contact">Contact</a></li>
   <li><a href="#credits">Credits</a></li>
 </ul>
 
  <h1 id="inspiration">Inspiration</h1>
  
 <p>DogStagram is an app for dogs and their best friends, man (I assume!). An individual can have dogs, and a dog can have many pictures. Social interections such as likes can happen to dogs, thier pictures, comments on their pictures, and replies to comments on their pictures. Intentionally, once someone acquires a dog, they cannot leave them. So, no selling of dogs by individuals.
 
 The commercial version of this app will have these features and more.</p>
  
 <a href=#table-of-contents> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
  <h1 id="introduction">Introduction</h1>
   <h2 id="overview">Basic Overview</h2>
    <p>User views other users and their dogs. User can view individual dogs too. User can acquire new dogs, like dogs, and/or their individual pictures, leave comments like commments, reply to comments, and like replies to comments.</p>
    
   <h2 id="features">Features</h2>
    <p>Features of the app include the following;
      <ul> 
       <li>User can create, edit, and delete an account</li>
       <li> A logged in user can do the following:
        <ul>
         <li>Acqure a dog</li>
         <li>View other users</li>
         <li>View dogs</li>
         <li>Make comments</li>
         <li>Like comments</li>
         <li>Reply to comments</li>
         <li>Like replies to comments</li>
         <li>View followers of other users</li>
         <li>View users that likes a comment or reply</li>
        </ul>
        </li>
      </ul>
    </p>
    
  <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
    
 <h1 id="goals">Goal</h1>
  <p>The goal is create a social media platform focused on dogs.</p>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 <h1 id="challenge">Challenges</h1>
  <p>The challenges include the following;</p>
  
  <ul>
     <li>Select pictures (and videos in the commercial version) from a device (iOS, Android, and Web browsers)</li>
     <li>Pass picture for profile pic lifted from the device to the Rails backend</li>
     <li>From the backend, store the picture file to AWS S3 via ActiveStorage </li>
     <li>Not have a copy in the backend, but instead AWS S3 sends a reference to the backend upon successful upload. This is what the Rails backend's ActiveStorage uses to generate a unique link each time image url is attached to an object, eg when a user logs in from the frontend, a successful login attempt will have a  profile photo URL unique to that instace of database access and sends it to the frontend. If the user logs out and logs in again, the photo URL will be different. The frontend in rendering this image URL points to the Rail backend API, which in turn processes the URL and responds with a redirect to AWS S3, and that renders to the frontend</li>
     <li>Pictures for dogs are saved to a Firebase Realtime Database, not to the backend</li>
     <li>The mix of storage technologies is to cut costs</li>
     <li>Use Firebase Auth to enable OAuth 2.0 login authorizations from Facebook and Twitter</li>
   </ul>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 
  <h1 id="demo">Demo</h1>
    <p> Click <a href="https://youtu.be/LF9feZH7L6w">here</a> for the demo</p>
      
   <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
   
   <h1 id="installation">Installation</h1>
   <h2 id="prerequisites">Prerequisites</h2>
      <p>AfroPanTrack frontend is biult with React(^16.12.0), Axios(^0.19.1), google maps react(^2.0.2"), react google maps(^9.4.5), redux(^4.0.5), and redux thunk(^2.3.0). Ensure you have installed these packages with the specified versions or newer ones before cloning this repo. You can find their official installation guides below;
 <ul>

 </ul>
</p>

  <h2 id="backend-installation">Backend installation</h2>
  <p>FindStation backend is biult with Ruby(2.7.0), Rails(^6.0.2), PostgreSQL(0.18) for PostgreSQL 12.1, Bcrypt(^3.1.7), Image processing(^1.2) from Active Storage, JWT, Active model serializer(^0.10.0), and Dotenv-rails(^2.7). 
  
 <ul> 
  <li>Clone <a href="https://github.com/chinomnsoawazie/dogstagram_backend">Dogstagram backend</a>
    <ul>
      <li>Ensure you have these uncommented or added in your gemfile before running <code>bundle install</code>
      <ul>
         <li><code>gem 'jwt'</code></li>
         <li><code>gem 'active_model_serializers', '~> 0.10.0'</code></li>
         <li><code>gem "dotenv-rails", "~> 2.7"</code></li>
         <li><code>gem 'bcrypt', '~> 3.1.7'</code></li>
         <li><code>gem 'image_processing', '~> 1.2'</code></li>
         <li><code>gem 'pg', '>= 0.18'</code></li>
         <li><code>gem 'rails', '~> 6.0.2'</code></li>
         <li><code>ruby '2.7.0'</code></li>
         <li><code>gem 'aws-sdk-s3'</code></li>
         <li><code>gem 'rack-cors'</code></li>
        </ul>
      </li>
    </ul>
  </li>
  <li>In your terminal, run <code>rvm use ruby-2.7.0</code> to make sure you are using the correct Ruby version(this assumes you already had Ruby 2.7.0 installed)</li>
  <li>Run <code>bundle install</code> to install all gems/dependancies required for FindStation</li>
  <li>Run <code>rails db:create</code> to create a local PostgresQL database</li>
  <li>Run <code>rails db:migrate</code>to create the tables/columns required for proper FindStation functionality</li>
  <li>Create a file called .env in the backend directory (/station_locate_backend/) and add HMAC_SECRET = "<insert a secret string here>"(this is for your JWT token) to the file</li>
   <li>Head over to  the <a href="https://github.com/chinomnsoawazie/station-locate-frontend/blob/master/README.md#frontend-installation">frontend</a> for instructions on how to install the frontend</li>

 </ul>
</p>

 <h2 id="first-start">First start</h2>
<p>After installation you need to fire up the backend API and the frontend in that order. For the backend, navigate into the folder you cloned the backend repo into(probably need to run an <code>ls</code> command to be sure youre in the root app folder), and run <code>rails s</code>. This would start the backend on the default <code>port 3000</code>. I used ngrok package to open up my <code>http://localhost:3000</code> to the internet so that my apps can access the backend through the internet. I wrote this <a href="https://medium.com/coffee-software/making-http-localhost-3000-accessible-from-mobile-devices-during-react-native-rails-api-app-87183075e5b4">article</a> detailing how to achieve that.  Then in a new shell tab or new terminal window, navigate to the folder containing the cloned and properly installed frontend repo and run <code>yarn start</code>. You will now be given options on what platforms to run the app.
 
<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

  <h1 id="credits">Credits</h1>
    <p>
 <ul>
  <li><a href="https://jwt.io/introduction/">JWT Auth</a></li>
  <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  <li><a href="https://rubyonrails.org/">Rails</a></li>
  <li><a href="https://rubygems.org/gems/dotenv-rails/versions/2.7.5">dotenv-rails</a></li>
  <li><a href="https://rubygems.org/gems/bcrypt/versions/3.1.7">Bcrypt</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  <li><a href="https://aws.amazon.com/s3/">AWS S3</a></li>
  <li><a href="https://firebase.google.com/docs/database">Firebase Realtime Database</a></li>
  <li><a href="https://reactnative.dev/">React Native</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>


