.class Lcom/android/server/VibratorService$MuteCallInfo;
.super Lcom/android/server/VibratorService$MuteInfo;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteCallInfo"
.end annotation


# static fields
.field private static sMuteOn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "magnitudeType"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 4220
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$MuteInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4221
    return-void
.end method

.method static synthetic access$5800()Z
    .registers 1

    .line 4216
    sget-boolean v0, Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z

    return v0
.end method

.method static synthetic access$5802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 4216
    sput-boolean p0, Lcom/android/server/VibratorService$MuteCallInfo;->sMuteOn:Z

    return p0
.end method
