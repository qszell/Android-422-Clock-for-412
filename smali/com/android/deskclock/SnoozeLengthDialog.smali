.class public Lcom/android/deskclock/SnoozeLengthDialog;
.super Landroid/preference/DialogPreference;
.source "SnoozeLengthDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNumberPickerMinutesView:Landroid/widget/TextView;

.field private mNumberPickerView:Landroid/widget/NumberPicker;

.field private mSnoozeMinutes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object p1, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mContext:Landroid/content/Context;

    .line 28
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SnoozeLengthDialog;->setDialogLayoutResource(I)V

    .line 29
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SnoozeLengthDialog;->setTitle(I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SnoozeLengthDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/deskclock/SnoozeLengthDialog;->updateDays()V

    return-void
.end method

.method private updateDays()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerMinutesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0001

    iget-object v3, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 42
    const v0, 0x7f0e004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerMinutesView:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    .line 44
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 45
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/SnoozeLengthDialog;->updateDays()V

    .line 48
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/android/deskclock/SnoozeLengthDialog$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/SnoozeLengthDialog$1;-><init>(Lcom/android/deskclock/SnoozeLengthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 54
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 87
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    .line 88
    iget v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SnoozeLengthDialog;->persistString(Ljava/lang/String;)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/deskclock/SnoozeLengthDialog;->setSummary()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/deskclock/SnoozeLengthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 37
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 59
    if-eqz p1, :cond_1

    .line 60
    const-string v1, "10"

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SnoozeLengthDialog;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    .line 71
    :cond_0
    :goto_0
    return-void

    .end local v0           #val:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .restart local v0       #val:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/deskclock/SnoozeLengthDialog;->persistString(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setSummary()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f

    iget v2, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/deskclock/SnoozeLengthDialog;->mSnoozeMinutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SnoozeLengthDialog;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
