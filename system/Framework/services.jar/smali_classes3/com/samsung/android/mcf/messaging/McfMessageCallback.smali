.class public abstract Lcom/samsung/android/mcf/messaging/McfMessageCallback;
.super Ljava/lang/Object;
.source "McfMessageCallback.java"


# static fields
.field public static final DEVICE_STATUS_CONNECTED:I = 0x2

.field public static final DEVICE_STATUS_DISCONNECTED:I = 0x0

.field public static final DEVICE_STATUS_RSSI_UPDATED:I = 0xa

.field public static final MESSAGE_REASON_DATA_BROKEN:I = -0x2

.field public static final MESSAGE_REASON_INVALID_PARAMETER:I = -0x1

.field public static final MESSAGE_REASON_NONE:I = 0x0

.field public static final MESSAGE_RESULT_FAIL:I = -0x1

.field public static final MESSAGE_RESULT_GET_RSSI_FAIL:I = -0x2

.field public static final MESSAGE_RESULT_GET_RSSI_SUCCESS:I = 0x2

.field public static final MESSAGE_RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageDeviceStatus(Lcom/samsung/android/mcf/McfDevice;II)V
    .registers 4

    return-void
.end method

.method public onMessageReceived(Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    return-void
.end method

.method public onMessageResult(Lcom/samsung/android/mcf/messaging/McfMessage;II)V
    .registers 4

    return-void
.end method
