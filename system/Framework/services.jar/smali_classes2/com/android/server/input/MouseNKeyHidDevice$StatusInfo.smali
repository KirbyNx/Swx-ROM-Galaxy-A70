.class Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusInfo"
.end annotation


# instance fields
.field private mAppRegistered:Z

.field private mConnectionState:I

.field private mFocusedDeviceToString:Ljava/lang/String;

.field private mPluggedDeviceToString:Ljava/lang/String;

.field private mPluggedDeviceToStringList:Ljava/lang/String;

.field private mToLocalTablet:Z

.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 3

    .line 161
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    .line 163
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    .line 167
    iput-boolean p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p2, "x1"    # Lcom/android/server/input/MouseNKeyHidDevice$1;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    return-void
.end method


# virtual methods
.method public equls(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    instance-of v0, p1, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 192
    iget v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    if-eq v0, v2, :cond_f

    .line 193
    return v1

    .line 195
    :cond_f
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 196
    return v1

    .line 198
    :cond_1d
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 199
    return v1

    .line 201
    :cond_2b
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 202
    return v1

    .line 204
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-boolean v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    if-eq v0, v2, :cond_43

    .line 205
    return v1

    .line 207
    :cond_43
    iget-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    move-object v2, p1

    check-cast v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-boolean v2, v2, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    if-eq v0, v2, :cond_4d

    .line 208
    return v1

    .line 210
    :cond_4d
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_4f
    return v1
.end method

.method public setInfo(ILandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "connectState"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "focusedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "deviceList"    # Ljava/lang/String;
    .param p5, "toLocalTablet"    # Z
    .param p6, "appRegister"    # Z

    .line 171
    iput p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    .line 172
    const-string/jumbo v0, "null"

    if-nez p2, :cond_9

    move-object v1, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 173
    if-nez p3, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 175
    iput-boolean p5, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    .line 176
    iput-boolean p6, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    .line 177
    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 180
    instance-of v0, p1, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    if-eqz v0, :cond_2e

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    iput v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mConnectionState:I

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 183
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 184
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-boolean v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mToLocalTablet:Z

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;

    iget-boolean v0, v0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$StatusInfo;->mAppRegistered:Z

    .line 188
    :cond_2e
    return-void
.end method
