namespace Beyond.States
{
    public class ActionState
    {
        #region Public Variables
        public PlayerState _state;
        #endregion

        #region Enum
        public enum PlayerState { IDLE = 0, CROUCHING, JUMPING, WALKING }
        #endregion


        #region Check State Functions
        public bool IsIdle { get { return _state == PlayerState.IDLE; } }
        public bool IsCrouching { get { return _state == PlayerState.CROUCHING; } }
        public bool IsJumping { get { return _state == PlayerState.JUMPING; } }
        public bool IsWalking { get { return _state == PlayerState.WALKING; } }
        #endregion


        #region Set State Functions
        public void SetIdle() { _state = PlayerState.IDLE; }
        public void SetCrouching() { _state = PlayerState.CROUCHING; }
        public void SetJumping() { _state = PlayerState.JUMPING; }
        public void SetWalking() { _state = PlayerState.WALKING; }
        #endregion
    }
}