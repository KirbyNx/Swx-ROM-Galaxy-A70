.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$OXCvo4FLMOCPFrHLSZK9insqNKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PolicyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PolicyImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$OXCvo4FLMOCPFrHLSZK9insqNKo;->f$0:Lcom/android/server/wm/PolicyImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$OXCvo4FLMOCPFrHLSZK9insqNKo;->f$0:Lcom/android/server/wm/PolicyImpl;

    check-cast p1, Lcom/android/server/wm/PackageConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PolicyImpl;->lambda$init$0$PolicyImpl(Lcom/android/server/wm/PackageConfiguration;)V

    return-void
.end method
