.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$9lKBlHkFsBOHifClIxiRB6tmyRk;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$shutdown$6$PhoneWindowManagerExt(Z)V

    return-void
.end method
