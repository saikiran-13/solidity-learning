// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Grandparent{
    event familytree(string msg);
    function call()  virtual public{
        emit familytree("Grandparent called");
    }
    function nothing() virtual public{
        emit familytree("Do nothing");
    }
}

contract Father is Grandparent{
    function call() virtual override public{
        emit familytree("Grandfather called from father");
        Grandparent.call();
    }

    function nothing() virtual override public{
        emit familytree("Father called");
        super.nothing();
    }
}

contract Mother is Grandparent{
    function call() virtual override public{
        emit familytree("Grandfather called from Mother");
        Grandparent.call();
    }

    function nothing() virtual override public{
        emit familytree("Mother called");
        super.nothing();
    }
}

contract Child is Father,Mother{
    function call() override(Father,Mother) public{
        super.call();
    }

    function nothing() override(Father,Mother) public{
        super.nothing();
    }
}