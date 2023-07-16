using CommunityToolkit.Mvvm.Messaging.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductInformationDB.Messages
{
    class UserLoginorUpdatedMessage : ValueChangedMessage<int>
    {
        public UserLoginorUpdatedMessage(int value) : base(value)
        {
        }
    }
}
