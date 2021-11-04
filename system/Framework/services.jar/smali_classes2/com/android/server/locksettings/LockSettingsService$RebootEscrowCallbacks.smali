.class Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootEscrowCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 5027
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/locksettings/LockSettingsService$1;

    .line 5027
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public isUserSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 5030
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    return v0
.end method

.method public onRebootEscrowRestored(B[BI)V
    .registers 13
    .param p1, "spVersion"    # B
    .param p2, "syntheticPassword"    # [B
    .param p3, "userId"    # I

    .line 5036
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 5037
    .local v0, "authToken":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 5038
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 5039
    # invokes: Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    invoke-static {v1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$3700(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    .line 5038
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v8, p3

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->access$3800(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    .line 5040
    return-void
.end method
