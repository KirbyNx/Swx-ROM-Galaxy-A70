.class Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 3531
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangeRequestedAsUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 3534
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;
    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$900(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/security/PasswordPolicyCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->isChangeRequestedAsUser(I)I

    move-result v0

    return v0
.end method
