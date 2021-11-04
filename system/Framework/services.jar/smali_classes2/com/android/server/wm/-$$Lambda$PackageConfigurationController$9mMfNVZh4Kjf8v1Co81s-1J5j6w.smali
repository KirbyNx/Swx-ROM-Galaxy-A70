.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$9mMfNVZh4Kjf8v1Co81s-1J5j6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$9mMfNVZh4Kjf8v1Co81s-1J5j6w;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$9mMfNVZh4Kjf8v1Co81s-1J5j6w;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/wm/PolicyImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/PackageConfigurationController;->lambda$executeShellCommand$4(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V

    return-void
.end method
