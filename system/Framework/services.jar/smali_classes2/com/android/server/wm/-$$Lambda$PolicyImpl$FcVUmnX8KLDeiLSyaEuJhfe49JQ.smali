.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PolicyImpl;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PolicyImpl;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$0:Lcom/android/server/wm/PolicyImpl;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$0:Lcom/android/server/wm/PolicyImpl;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/PackageConfiguration;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/PolicyImpl;->lambda$dump$6$PolicyImpl(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/PackageConfiguration;)V

    return-void
.end method
