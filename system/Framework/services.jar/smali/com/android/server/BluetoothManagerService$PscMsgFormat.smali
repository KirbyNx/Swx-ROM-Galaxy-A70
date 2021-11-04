.class Lcom/android/server/BluetoothManagerService$PscMsgFormat;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PscMsgFormat"
.end annotation


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mProxy:Landroid/bluetooth/IBluetoothProfileServiceConnection;


# direct methods
.method private constructor <init>(Landroid/bluetooth/IBluetoothProfileServiceConnection;Ljava/lang/String;)V
    .registers 4
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 2151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mProxy:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2149
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mCaller:Ljava/lang/String;

    .line 2152
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mProxy:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2153
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mCaller:Ljava/lang/String;

    .line 2154
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/IBluetoothProfileServiceConnection;Ljava/lang/String;Lcom/android/server/BluetoothManagerService$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/BluetoothManagerService$1;

    .line 2147
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService$PscMsgFormat;-><init>(Landroid/bluetooth/IBluetoothProfileServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService$PscMsgFormat;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$PscMsgFormat;

    .line 2147
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/BluetoothManagerService$PscMsgFormat;)Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$PscMsgFormat;

    .line 2147
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mProxy:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    return-object v0
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .registers 2

    .line 2161
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .registers 2

    .line 2157
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$PscMsgFormat;->mProxy:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    return-object v0
.end method
