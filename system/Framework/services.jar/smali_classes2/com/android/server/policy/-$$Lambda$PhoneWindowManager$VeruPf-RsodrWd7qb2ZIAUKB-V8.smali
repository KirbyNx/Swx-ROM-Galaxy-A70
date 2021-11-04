.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$VeruPf-RsodrWd7qb2ZIAUKB-V8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$VeruPf-RsodrWd7qb2ZIAUKB-V8;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$VeruPf-RsodrWd7qb2ZIAUKB-V8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$VeruPf-RsodrWd7qb2ZIAUKB-V8;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$VeruPf-RsodrWd7qb2ZIAUKB-V8;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lambda$requestDeviceFolded$1$PhoneWindowManager(Z)V

    return-void
.end method
