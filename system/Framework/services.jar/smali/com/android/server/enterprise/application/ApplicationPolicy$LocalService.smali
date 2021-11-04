.class final Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 12711
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 12733
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .line 12715
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUserInMap(Ljava/lang/String;ZI)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;ZI)Z

    move-result v0

    .line 12716
    .local v0, "ret":Z
    return v0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 12721
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isApplicationStopDisabledAsUser(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorClass"    # Ljava/lang/String;
    .param p5, "errorReason"    # Ljava/lang/String;
    .param p6, "showMsg"    # Z

    .line 12727
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$LocalService;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
