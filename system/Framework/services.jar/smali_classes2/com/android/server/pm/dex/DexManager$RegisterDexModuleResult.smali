.class public Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/DexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterDexModuleResult"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final success:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 910
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    .line 911
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-boolean p1, p0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->success:Z

    .line 915
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->message:Ljava/lang/String;

    .line 916
    return-void
.end method
