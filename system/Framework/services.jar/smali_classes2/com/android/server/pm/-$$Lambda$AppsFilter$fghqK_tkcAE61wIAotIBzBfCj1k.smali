.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$fghqK_tkcAE61wIAotIBzBfCj1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$fghqK_tkcAE61wIAotIBzBfCj1k;->f$0:Lcom/android/server/pm/AppsFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$fghqK_tkcAE61wIAotIBzBfCj1k;->f$0:Lcom/android/server/pm/AppsFilter;

    invoke-virtual {v0}, Lcom/android/server/pm/AppsFilter;->lambda$onUsersChanged$7$AppsFilter()V

    return-void
.end method
