.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;,
        Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$DOPConnectionState;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"


# instance fields
.field private final ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String;

.field private final IMS_MASK_HW_KEYBOARD:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DEX_ON_PC:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_POGO:I

.field private final KEYBOARD_POGO_BACKFOLDED:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private final SIDESYNC_RECEIVER_PERMISSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private keyboardState:I

.field private mBTKeyboardCount:I

.field private mContext:Landroid/content/Context;

.field private mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

.field private mUSBKeyboardCount:I

.field private mUSBKeyboardCountOld:I

.field private prevAutoMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String;

    .line 24
    const-string v0, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->SIDESYNC_RECEIVER_PERMISSION:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_UNDEFINED:I

    .line 26
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_BT:I

    .line 27
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_USB:I

    .line 28
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_POGO_BACKFOLDED:I

    .line 29
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_PSS:I

    .line 30
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_KMS:I

    .line 31
    const/16 v1, 0x40

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_POGO:I

    .line 32
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->IMS_MASK_HW_KEYBOARD:I

    .line 33
    const/16 v1, 0x80

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->KEYBOARD_DEX_ON_PC:I

    .line 35
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 36
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 37
    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    .line 42
    const-string v0, "SamsungIMMSHWKeyboard"

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .param p1, "x1"    # I

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .param p1, "x1"    # I

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    invoke-direct {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    invoke-direct {p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return p1
.end method

.method static synthetic access$506(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 21
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    return v0
.end method

.method private connectedHWKeyboard()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    .line 98
    return-void
.end method

.method private updateBrightnessMode()V
    .registers 4

    .line 101
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 102
    iget-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->prevAutoMode:I

    .line 105
    return-void
.end method


# virtual methods
.method public isAccessoryKeyboard()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    return v0
.end method

.method public isHWAccessoryKeyboard()Z
    .registers 7

    .line 75
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 77
    .local v0, "isHWkeyboard":Z
    :goto_b
    iget v3, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 78
    .local v3, "isConnectedDexOnPC":Z
    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isConnectedDexOnPC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SamsungIMMSHWKeyboard"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez v0, :cond_31

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1
.end method

.method public isPogoBackfolded()Z
    .registers 4

    .line 83
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 84
    .local v0, "isPogoBackfolded":Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPogoBackfolded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungIMMSHWKeyboard"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v0
.end method

.method public isPogoConnected()Z
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPogoConnectedOnly()Z
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    if-eqz v0, :cond_a

    and-int/lit8 v0, v0, -0x49

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "PSSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$PSSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v2, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v1, "KMSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v2, "USBkeyboardFilter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const-string v5, "android.permission.MANAGE_USB"

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v3, "BTKeyboardFilter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v4, "POGOKeyboardFilter":Landroid/content/IntentFilter;
    const-string v5, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v5, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 128
    .local v5, "pogoKeyboardReceiver":Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual {v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->init()V

    .line 130
    return-void
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    .line 358
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    .line 359
    return-void
.end method

.method public updateKeyboardStateForDEXOnPC(I)V
    .registers 3
    .param p1, "state"    # I

    .line 67
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 68
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    goto :goto_10

    .line 70
    :cond_a
    iget v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 72
    :goto_10
    return-void
.end method
