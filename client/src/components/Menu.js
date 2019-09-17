import React from "react";
import { Icon, Button, Header } from "semantic-ui-react";

const Menu = ({ id, complete, name, updateMenu, deleteMenu }) => (
  <div style={styles.flex}>
    <div style={styles.flex}>
      <div style={complete ? styles.complete : {}} className="center">
        <Header as="h2" style={{ marginLeft: "15px", }}>{ name }</Header>
      </div>
    </div>
    <Button
      icon
      color="red"
      size="tiny"
      onClick={() => deleteMenu(id)}
      style={{ marginLeft: "15px", }}
    >
      <Icon name="trash" />
    </Button>
  </div>
)

const styles = {
  flex: {
    display: "flex",
    alignItems: "center",
  },
};

export default Menu;