.class public final synthetic Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$DgMxwHfdac3IvZY7PRo0G6DBeO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/OneHandOpPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$DgMxwHfdac3IvZY7PRo0G6DBeO8;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$DgMxwHfdac3IvZY7PRo0G6DBeO8;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->lambda$screenTurnedOff$1$OneHandOpPolicyManager()V

    return-void
.end method
