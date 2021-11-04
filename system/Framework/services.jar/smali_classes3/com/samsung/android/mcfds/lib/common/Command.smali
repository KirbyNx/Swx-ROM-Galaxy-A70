.class public Lcom/samsung/android/mcfds/lib/common/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field public static final CB_COPY_PASTE_DOWNLOAD_ON_COMPLETED:I = 0x2713

.field public static final CB_COPY_PASTE_ON_CLEAR:I = 0x2712

.field public static final CB_COPY_PASTE_ON_COPY:I = 0x2711

.field public static final CB_SERVICE_STATUS_CHANGED:I = 0x2710

.field public static final CMD_COPY_PASTE_CANCEL_DOWNLOAD:I = 0x69

.field public static final CMD_COPY_PASTE_REGISTER_CLIP_STATE_LISTENER:I = 0x64

.field public static final CMD_COPY_PASTE_REMOVE_CLIPDATA:I = 0x67

.field public static final CMD_COPY_PASTE_REQUEST_DOWNLOAD:I = 0x68

.field public static final CMD_COPY_PASTE_UNREGISTER_CLIP_STATE_LISTENER:I = 0x65

.field public static final CMD_COPY_PASTE_UPDATE_CLIPDATA:I = 0x66

.field public static final CMD_REGISTER_DEVICE_SYNC_CALLBACK:I = 0x1

.field public static final CMD_REGISTER_SERVICE_STATE_LISTENER:I = 0xa

.field public static final CMD_SYNC_END:I = 0x3e9

.field public static final CMD_SYNC_GET_NEARBY_MYDEVICE_COUNT:I = 0x3e8

.field public static final CMD_SYNC_START:I = 0x3e8

.field public static final CMD_UNREGISTER_DEVICE_SYNC_CALLBACK:I = 0x2

.field public static final CMD_UNREGISTER_SERVICE_STATE_LISTENER:I = 0xb

.field public static final KEY_CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DOWNLOAD_COMPLETE_REASON:Ljava/lang/String; = "reason_code"

.field public static final KEY_INPUT:Ljava/lang/String; = "input"

.field public static final KEY_IS_EXCEED:Ljava/lang/String; = "is_exceed"

.field public static final KEY_IS_LOCAL:Ljava/lang/String; = "is_local"

.field public static final KEY_REMOTE_CLIP_DATA:Ljava/lang/String; = "rclip_data"

.field public static final KEY_REMOTE_CLIP_DATA_PATH:Ljava/lang/String; = "rclip_path"

.field public static final KEY_REMOTE_CLIP_DATA_TYPE:Ljava/lang/String; = "rclip_type"

.field public static final KEY_REMOTE_CLIP_ID:Ljava/lang/String; = "rclip_id"

.field public static final KEY_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field public static final RETURN_FAILED:I = -0x1

.field public static final RETURN_SUCCESS:I = 0x0

.field public static final RETURN_SVC_AVAILABLE:I = 0x1

.field public static final RETURN_SVC_UNAVAILABLE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
