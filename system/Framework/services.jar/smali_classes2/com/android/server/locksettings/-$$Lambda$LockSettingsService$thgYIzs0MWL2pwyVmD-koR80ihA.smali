.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithToken$5$LockSettingsService(I)V

    return-void
.end method
