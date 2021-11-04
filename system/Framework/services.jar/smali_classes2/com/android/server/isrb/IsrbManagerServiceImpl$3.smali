.class Lcom/android/server/isrb/IsrbManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "IsrbManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 227
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$3;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 230
    return-void
.end method
