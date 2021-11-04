.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4107
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 4108
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 4113
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    packed-switch v0, :pswitch_data_108

    :pswitch_c
    goto/16 :goto_106

    .line 4183
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->sendVRProximityEventChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2500(Lcom/android/server/input/InputManagerService;I)V

    .line 4184
    goto/16 :goto_106

    .line 4170
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->showFnLockUnlockToast(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2300(Lcom/android/server/input/InputManagerService;I)V

    .line 4171
    goto/16 :goto_106

    .line 4173
    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4174
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    .line 4175
    .local v1, "whenNanos":J
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 4176
    .local v3, "reason":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 4177
    .local v4, "details":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->wakeUp(JILjava/lang/String;)V
    invoke-static {v5, v1, v2, v3, v4}, Lcom/android/server/input/InputManagerService;->access$2400(Lcom/android/server/input/InputManagerService;JILjava/lang/String;)V

    .line 4178
    goto/16 :goto_106

    .line 4144
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "whenNanos":J
    .end local v3    # "reason":I
    .end local v4    # "details":Ljava/lang/String;
    :pswitch_47
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4145
    .local v0, "behavior":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4146
    .local v1, "reserved":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverMultiFingerGesture(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;II)V

    .line 4147
    goto/16 :goto_106

    .line 4151
    .end local v0    # "behavior":I
    .end local v1    # "reserved":I
    :pswitch_52
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4152
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/PointerIcon;

    if-eqz v1, :cond_5f

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/PointerIcon;

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    .line 4153
    .local v1, "icon":Landroid/view/PointerIcon;
    :goto_60
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverPointerIconChanged(ILandroid/view/PointerIcon;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;ILandroid/view/PointerIcon;)V

    .line 4154
    goto/16 :goto_106

    .line 4136
    .end local v0    # "type":I
    .end local v1    # "icon":Landroid/view/PointerIcon;
    :pswitch_67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4137
    .local v0, "argsLid":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    .line 4138
    .local v1, "when":J
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4139
    .local v3, "lidOpen":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverLidStateChanged(JZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;JZ)V

    .line 4140
    goto/16 :goto_106

    .line 4196
    .end local v0    # "argsLid":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "when":J
    .end local v3    # "lidOpen":Z
    :pswitch_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4197
    .local v0, "argsKl":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 4198
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 4200
    .local v2, "availableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    invoke-static {v3, v1, v2}, Lcom/android/server/input/InputManagerService;->access$2700(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    goto/16 :goto_106

    .line 4166
    .end local v0    # "argsKl":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "availableInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :pswitch_97
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->showTouchpadOnOffToast(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2200(Lcom/android/server/input/InputManagerService;I)V

    .line 4167
    goto :goto_106

    .line 4188
    :pswitch_a5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4189
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 4190
    .local v1, "argsSubtype":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4191
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4192
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4193
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    invoke-static {v4, v0, v2, v3}, Lcom/android/server/input/InputManagerService;->access$2600(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4194
    goto :goto_106

    .line 4157
    .end local v0    # "userId":I
    .end local v1    # "argsSubtype":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_bc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4158
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    .line 4159
    .local v1, "whenNanos":J
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4160
    .local v3, "inTabletMode":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$2100(Lcom/android/server/input/InputManagerService;JZ)V

    .line 4161
    goto :goto_106

    .line 4132
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "whenNanos":J
    .end local v3    # "inTabletMode":Z
    :pswitch_d8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;)V

    .line 4133
    goto :goto_106

    .line 4129
    :pswitch_de
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)V

    .line 4130
    goto :goto_106

    .line 4126
    :pswitch_e4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)V

    .line 4127
    goto :goto_106

    .line 4120
    :pswitch_ea
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4121
    .local v0, "argsSkl":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeHandle;

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/inputmethod/InputMethodSubtypeHandle;)V

    .line 4124
    goto :goto_106

    .line 4115
    .end local v0    # "argsSkl":Lcom/android/internal/os/SomeArgs;
    :pswitch_fc
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    .line 4116
    nop

    .line 4204
    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_ea
        :pswitch_e4
        :pswitch_de
        :pswitch_d8
        :pswitch_bc
        :pswitch_a5
        :pswitch_97
        :pswitch_84
        :pswitch_67
        :pswitch_52
        :pswitch_47
        :pswitch_2c
        :pswitch_1d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method
