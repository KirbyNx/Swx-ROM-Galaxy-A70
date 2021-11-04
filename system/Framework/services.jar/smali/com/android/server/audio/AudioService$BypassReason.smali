.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BypassReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/audio/AudioService$BypassReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 13271
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "NO_BYPASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13272
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "DISPLAY_VOLUME_CONTROL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13273
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "CANNOT_UNMUTE_SILENT_VIBRATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13274
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "ALL_SOUND_MUTE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13275
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "TMS_CONNECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13276
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "CONSUME_ADJUST_SAME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13277
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "MULTISOUND"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13278
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "MEDIA_VOLUME_STEP_ON"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13279
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "SKIP_WARNING_POPUP_VISIBLE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13280
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13281
    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v1, "VOLUME_LIMITER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    .line 13270
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v13, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 13270
    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .registers 1

    .line 13270
    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    invoke-virtual {v0}, [Lcom/android/server/audio/AudioService$BypassReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method
