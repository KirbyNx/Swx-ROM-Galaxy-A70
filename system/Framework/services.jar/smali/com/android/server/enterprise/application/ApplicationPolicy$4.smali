.class Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionsOnInstallation(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2230
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2232
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 2233
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V

    .line 2234
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reconcileAdditionalRuntimePermissionsForMDM(Ljava/lang/String;)V

    .line 2235
    return-void
.end method
