.class Lcom/android/server/locksettings/LockSettingsService$8;
.super Landroid/os/ContainerStateReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 6647
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 6650
    invoke-super {p0, p1, p2, p3}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 6651
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$8;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    invoke-static {v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->access$4600(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 6652
    return-void
.end method
