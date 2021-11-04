.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mId:I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;

    .line 80
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    .registers 2

    .line 93
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    .line 94
    .local v0, "resource":Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
    return-object v0
.end method
