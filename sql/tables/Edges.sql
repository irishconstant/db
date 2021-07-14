CREATE TABLE Edges(
	ID BIGINT IDENTITY(1,1) PRIMARY KEY 
	, F_Parent_Node BIGINT
	, F_Child_Node  BIGINT
	, F_Edge_Type TINYINT
)

CREATE TABLE Edge_Types(
	ID TINYINT IDENTITY(1,1) PRIMARY KEY
	, C_Name NVARCHAR(100)
)

ALTER TABLE Edges
ADD FOREIGN KEY (F_Edge_Type) REFERENCES Edge_Types(ID)

ALTER TABLE Edges
ADD FOREIGN KEY (F_Parent_Node) REFERENCES Nodes(ID)

ALTER TABLE Edges
ADD FOREIGN KEY (F_Child_Node) REFERENCES Nodes(ID)