.class Lcom/android/server/policy/TspStateManager$TspDebug;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TspDebug"
.end annotation


# instance fields
.field private mHoleCommand:Ljava/lang/String;

.field private mLandCommand:Ljava/lang/String;

.field private mLastCommand:Ljava/lang/String;

.field private mLastNoteMode:Ljava/lang/String;

.field private mPortCommand:Ljava/lang/String;

.field private mScreenInitHeight:I

.field private mScreenInitWidth:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    .line 679
    return-void
.end method

.method private updateDebugString(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    const-string/jumbo v3, "setting_last_grip_cmd"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 716
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastNoteMode:Ljava/lang/String;

    const-string/jumbo v3, "setting_last_note_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 718
    return-void
.end method


# virtual methods
.method setInitDisplaySize(II)V
    .registers 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 721
    iput p1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    .line 722
    iput p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    .line 723
    return-void
.end method

.method public updateTspState(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 682
    const/4 v0, 0x6

    if-ne p3, v0, :cond_6

    .line 683
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastNoteMode:Ljava/lang/String;

    goto :goto_1b

    .line 685
    :cond_6
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 686
    const/4 v0, 0x1

    if-eq p3, v0, :cond_18

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    const/4 v0, 0x3

    if-eq p3, v0, :cond_12

    goto :goto_1b

    .line 694
    :cond_12
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    goto :goto_1b

    .line 691
    :cond_15
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    .line 692
    goto :goto_1b

    .line 688
    :cond_18
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    .line 689
    nop

    .line 698
    :goto_1b
    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateDebugString(Landroid/content/Context;)V

    .line 699
    return-void
.end method
