.class Lcom/android/server/pm/PackageInstallerSession$StreamingException;
.super Ljava/lang/Exception;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamingException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1461
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$StreamingException;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 1462
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 1463
    return-void
.end method
