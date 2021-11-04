.class public abstract Lcom/samsung/accessory/manager/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;,
        Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    }
.end annotation


# static fields
.field public static BT_MAX_CONNECTION:I = 0x0

.field public static NFC_MAX_CONNECTION:I = 0x0

.field public static final NOT_SUPPORT:[B

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_OFF:I = 0x2

.field public static final STATE_ON:I = 0x1

.field public static final STATE_TURNING_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_BT:I = 0x2

.field public static final TYPE_NFC:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USB:I = 0x3

.field public static final TYPE_WIRELESSCHARGER:I = 0x4

.field public static USB_MAX_CONNECTION:I

.field public static WIRELESSCHARGER_MAX_CONNECTION:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEnabledInternal:Z

.field protected mSessionState:I

.field protected mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    .line 24
    const/16 v1, 0x8

    sput v1, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    .line 25
    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->USB_MAX_CONNECTION:I

    .line 26
    sput v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->WIRELESSCHARGER_MAX_CONNECTION:I

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    return-void

    nop

    :array_2e
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 87
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public static getMaxConnection(I)I
    .registers 2
    .param p0, "type"    # I

    .line 64
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 65
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NFC_MAX_CONNECTION:I

    return v0

    .line 66
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 67
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->BT_MAX_CONNECTION:I

    return v0

    .line 68
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 69
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->USB_MAX_CONNECTION:I

    return v0

    .line 70
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 71
    sget v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->WIRELESSCHARGER_MAX_CONNECTION:I

    return v0

    .line 73
    :cond_18
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enable()Z
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionState()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    return v0
.end method

.method public abstract isEnabled()Z
.end method

.method public isEnabledInternally()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return v0
.end method

.method public abstract openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendStopAuth()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendStopUsbAuth()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setSessionState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 56
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 57
    return-void
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 43
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 44
    return-void
.end method
