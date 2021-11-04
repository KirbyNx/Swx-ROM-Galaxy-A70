.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$n6s19dvnp0xC1-HlFWzeeewh3Vk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$n6s19dvnp0xC1-HlFWzeeewh3Vk;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$n6s19dvnp0xC1-HlFWzeeewh3Vk;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$handleXCoverKey$7$PhoneWindowManagerExt()V

    return-void
.end method
