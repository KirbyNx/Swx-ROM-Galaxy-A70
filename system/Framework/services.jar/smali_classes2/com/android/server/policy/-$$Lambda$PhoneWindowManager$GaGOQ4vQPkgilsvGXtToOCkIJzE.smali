.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$GaGOQ4vQPkgilsvGXtToOCkIJzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$GaGOQ4vQPkgilsvGXtToOCkIJzE;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$GaGOQ4vQPkgilsvGXtToOCkIJzE;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$interceptKeyBeforeDispatching$0$PhoneWindowManager()V

    return-void
.end method
