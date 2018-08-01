namespace Beyond.CustomVariables
{
    public class TriggerVariable<T>
    {
        #region Public Variables
        private T _variable;
        public delegate void VariableChangeDelegate();
        public VariableChangeDelegate methodToCall;
        #endregion


        #region Setup Functions
        public TriggerVariable(T value)
        {
            _variable = value;
        }

        public TriggerVariable(T value, VariableChangeDelegate method)
        {
            _variable = value;
            methodToCall = method;
        }
        #endregion


        #region Set & Get Functions
        public void Set(T newVar)
        {
            _variable = newVar;
            if (methodToCall != null) methodToCall();
        }

        public void SetIfNew(T newVar)
        {
            if (_variable.Equals(newVar))
                return;

            _variable = newVar;
            if (methodToCall != null) methodToCall();
        }

        public void SetNoTrigger(T newVar)
        {
            _variable = newVar;
        }

        public T Get()
        {
            return _variable;
        }
        #endregion
    }
}