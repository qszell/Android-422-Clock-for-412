.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindExpandArea(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

.field final synthetic val$alarm:Lcom/android/deskclock/Alarm;

.field final synthetic val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iput-object p3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 782
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v6, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 815
    .end local p1
    :goto_0
    return-void

    .line 785
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 786
    .local v1, checked:Z
    if-eqz v1, :cond_3

    .line 788
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v6, v6, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 789
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1600(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v7, v7, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v8, v8, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 795
    .local v3, daysOfWeekCoded:I
    if-nez v3, :cond_1

    .line 796
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->DAY_ORDER:[I
    invoke-static {v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget v2, v0, v4

    .line 797
    .local v2, day:I
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v6, v6, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/android/deskclock/Alarm$DaysOfWeek;->setDayOfWeek(IZ)V

    .line 796
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 800
    .end local v0           #arr$:[I
    .end local v2           #day:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v6, v6, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    new-instance v7, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v7, v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 802
    :cond_2
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v8, v8, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->updateDaysOfWeekButtons(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    invoke-static {v6, v7, v8}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 814
    :goto_2
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v6, v6, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    #calls: Lcom/android/deskclock/AlarmClock;->asyncUpdateAlarm(Lcom/android/deskclock/Alarm;Z)V
    invoke-static {v6, v7, v9}, Lcom/android/deskclock/AlarmClock;->access$1200(Lcom/android/deskclock/AlarmClock;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_0

    .line 804
    .end local v3           #daysOfWeekCoded:I
    :cond_3
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$itemHolder:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;

    iget-object v6, v6, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$ItemHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mRepeatChecked:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1600(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v7, v7, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v6, v6, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v6}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v3

    .line 809
    .restart local v3       #daysOfWeekCoded:I
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget v8, v8, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 812
    iget-object v6, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$9;->val$alarm:Lcom/android/deskclock/Alarm;

    iget-object v6, v6, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    new-instance v7, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v7, v9}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    goto :goto_2
.end method
