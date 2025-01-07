import logo from './logo.svg';
import './App.css';

import HelloCls from './Component/HelloCls';
import Hellofun from './Component/Hellofun';
import Header from './Component/Header';
import Time from './Component/Time';
import Table from './Component/Table';
import Name from './Component/Name';
import FirstName from './Component/FirstName';
import ArrayName from './Component/ArrayName';
import HookComponent from './Component/HookComponent';
import Para from './Component/Para';
import Count from './Component/Count';
import Image from './Component/Image';

import FirstReact from './Component/FirstReact';
import FormTwo from './Component/FormTwo';
import LifeCycle2 from './Component/LifeCycle2';
import LifeCycle3 from './Component/LifeCycle3';
import LifeCycle1 from './Component/LifeCycle1';
import Router from './Component/Router';
import {Link,Routes,Route} from 'react-router-dom';
import Wrong from './Component/Wrong';
import EmpForm from './Component/EmpForm';

import PropFunction from './Component/PropFunction';
import PropClass from './Component/PropClass';
import UseSate from './Component/UseState';
import UseFunction from './Component/UseFunction';
import StudentForm from './Component/StudentForm';
import ProductForm from './Component/ProductForm';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        {/* <img src={logo} className="App-logo" alt="logo" />
       <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
        <HelloCls />
        <Hellofun />
        <Header />
        <Time />
        <Table />
        <Name />
        <FirstName no="5"/>
        <ArrayName arr={["sami","vrush","sonal"]}/>
        <HookComponent />
        <Para />
        <Count />
        <Image />
        <StudentArray />
        <FirstReact />
        <FormTwo />
        <LifeCycle2 />
        <LifeCycle3 />
        
        <LifeCycle2/>
        <ul className="nav navbar">
            <li className="nav-item">              
                <Link to="/hello" className="nav-link">HelloCls</Link>
            </li>
            
            <li className="nav-item">
                <Link to="/ArrayName" className="nav-link">ArrayName</Link>
            </li>
            <li className="nav-item">
                <Link to="/Router" className="nav-link">Router</Link>
            </li>
            <li className="nav-item">
                <Link to="/Wrong" className="nav-link">Wrong</Link>
            </li>
        </ul>
        <Routes>
          <Route path="/HomeComp" element={ <HomeComp/> }  />
          <Route path="/hello" element={ <HelloCls /> } />
          <Route path="/complex" element={<Router /> } />
         <Route path="/FormTwo" element={<Getreg />} />
          <Route path="/ArrayName" element={<ArrayName/>} />
          <Route path="/Wrong" element={ <Wrong/> } />
        </Routes>
        <Practice />
        <PracticeClas/>
        <PropFunction name="Nikhil"/>
        <PropClass name="nik"/>
        <UseSate />*/}
        <ProductForm />
        
      </header>
    </div>
  );
}

export default App;
