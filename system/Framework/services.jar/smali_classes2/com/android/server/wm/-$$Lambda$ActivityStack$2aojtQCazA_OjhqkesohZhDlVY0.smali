.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;ZLjava/io/PrintWriter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$0:Lcom/android/server/wm/ActivityStack;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$0:Lcom/android/server/wm/ActivityStack;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;->f$2:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->lambda$dump$11$ActivityStack(ZLjava/io/PrintWriter;)V

    return-void
.end method
