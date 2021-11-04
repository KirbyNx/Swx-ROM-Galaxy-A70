.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Ljava/util/ArrayList;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 181
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const-string v0, "com.samsung.android.knox.containeragent"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v0, "com.samsung.android.knox.containercore"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method
