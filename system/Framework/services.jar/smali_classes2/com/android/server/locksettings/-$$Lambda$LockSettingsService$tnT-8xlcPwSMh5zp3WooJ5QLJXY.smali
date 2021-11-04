.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;->f$0:I

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;->f$0:I

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$onSyntheticPasswordRewrapped$7(IILcom/android/server/SdpManagerService;)V

    return-void
.end method
