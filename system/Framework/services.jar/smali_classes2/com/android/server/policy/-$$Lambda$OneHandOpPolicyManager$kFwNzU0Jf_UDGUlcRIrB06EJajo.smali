.class public final synthetic Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/OneHandOpPolicyManager;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->lambda$startService$2$OneHandOpPolicyManager(Z)V

    return-void
.end method
